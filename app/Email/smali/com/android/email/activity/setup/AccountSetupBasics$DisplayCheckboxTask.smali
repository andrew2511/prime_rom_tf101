.class Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayCheckboxTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 659
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .parameter "params"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 659
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "numAccounts"

    .prologue
    const/4 v2, 0x0

    .line 668
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    .line 670
    .local v0, activity:Landroid/app/Activity;
    const v1, 0x7f0f001f

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 672
    const v1, 0x7f0f0021

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 674
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 659
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
