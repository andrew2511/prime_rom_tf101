.class Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;
.super Landroid/os/AsyncTask;
.source "OrderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->confirmOrder()V
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
        "Lcom/newspaperdirect/pressreader/android/core/AccountStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

.field private final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->val$dlg:Landroid/app/ProgressDialog;

    .line 117
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/newspaperdirect/pressreader/android/core/AccountStatus;
    .locals 1
    .parameter "params"

    .prologue
    .line 121
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->get()Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->doInBackground([Ljava/lang/Void;)Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;)V
    .locals 12
    .parameter "accountStatus"

    .prologue
    const v11, 0x7f090089

    const v10, 0x7f090062

    const v9, 0x7f09005c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 127
    :try_start_0
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 131
    .local v0, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_0

    .line 132
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    const v4, 0x7f090018

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 134
    const v4, 0x7f09002c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 135
    const v4, 0x7f090060

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$1;

    invoke-direct {v5, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 146
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$2;

    invoke-direct {v4, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 158
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 246
    :goto_1
    return-void

    .line 160
    :cond_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/Service;->isImplicitlyActivated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->getRemainigCredits()I

    move-result v3

    if-lez v3, :cond_1

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09008a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 163
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09008d

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 164
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09008b

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 165
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09008c

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->getRemainigCredits()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, message:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 168
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 169
    invoke-virtual {v3, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 170
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$3;

    invoke-direct {v5, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 178
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$4;

    invoke-direct {v5, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$4;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 187
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 190
    .end local v1           #message:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v3, v8}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$3(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Z)V

    goto/16 :goto_1

    .line 193
    :cond_2
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->getSubscriptionStatus()I

    move-result v3

    if-eq v3, v8, :cond_3

    .line 194
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 196
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    const/high16 v5, 0x7f09

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 197
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09005e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$5;

    invoke-direct {v5, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$5;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 209
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 211
    :cond_3
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->getSubscriptionPlan()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Pay As You Go"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 212
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->getAdditionalNewspaperPriceFormatted()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, priceString:Ljava/lang/String;
    if-nez v2, :cond_4

    .line 214
    const-string v3, "%.2f"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;->getAdditionalNewspaperPrice()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 215
    :cond_4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f09008e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 217
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090005

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 218
    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 219
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$6;

    invoke-direct {v5, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$6;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 229
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$7;

    invoke-direct {v5, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3$7;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 244
    .end local v2           #priceString:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->this$0:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-static {v3, v7}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->access$3(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Z)V

    goto/16 :goto_1

    .line 129
    .end local v0           #flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/newspaperdirect/pressreader/android/core/AccountStatus;

    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->onPostExecute(Lcom/newspaperdirect/pressreader/android/core/AccountStatus;)V

    return-void
.end method
