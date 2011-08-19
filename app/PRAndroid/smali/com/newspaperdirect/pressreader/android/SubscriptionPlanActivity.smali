.class public Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;
.super Landroid/app/Activity;
.source "SubscriptionPlanActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$SubscriptionAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final DLG_PROGRESS:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->DLG_PROGRESS:I

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->nextStep(Ljava/lang/String;)V

    return-void
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->showDialog(I)V

    .line 63
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;-><init>(Landroid/app/Activity;)V

    .line 64
    new-instance v1, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;-><init>(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->setPositiveResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->check()V

    .line 85
    return-void
.end method

.method private nextStep(Ljava/lang/String;)V
    .locals 2
    .parameter "planId"

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/newspaperdirect/pressreader/android/PersonalInformation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, next:Landroid/content/Intent;
    const-string v1, "product-id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;->init(Landroid/app/Activity;)V

    .line 34
    const v1, 0x7f0900b2

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    const v1, 0x7f03001c

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->setContentView(I)V

    .line 36
    const v1, 0x7f0c0077

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 37
    .local v0, plans:Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 38
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->loadData()V

    .line 39
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 47
    packed-switch p1, :pswitch_data_0

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 49
    :pswitch_0
    const-string v1, ""

    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 50
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$1;-><init>(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v1, v0

    .line 55
    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;

    .line 43
    .local v0, plan:Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;
    iget-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;->Id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->nextStep(Ljava/lang/String;)V

    .line 44
    return-void
.end method
