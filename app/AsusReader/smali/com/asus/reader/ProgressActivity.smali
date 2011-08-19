.class public Lcom/asus/reader/ProgressActivity;
.super Landroid/app/Activity;
.source "ProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static FAILED_TO_LOAD_DOCUMENT:I


# instance fields
.field private final mToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput v0, Lcom/asus/reader/ProgressActivity;->FAILED_TO_LOAD_DOCUMENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 127
    new-instance v0, Lcom/asus/reader/ProgressActivity$2;

    invoke-direct {v0, p0}, Lcom/asus/reader/ProgressActivity$2;-><init>(Lcom/asus/reader/ProgressActivity;)V

    iput-object v0, p0, Lcom/asus/reader/ProgressActivity;->mToastHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/ProgressActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/asus/reader/ProgressActivity;->mToastHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/asus/reader/ProgressActivity;->FAILED_TO_LOAD_DOCUMENT:I

    return v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/asus/reader/ProgressActivity;->finish()V

    .line 31
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0, v4}, Lcom/asus/reader/ProgressActivity;->requestWindowFeature(I)Z

    .line 38
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->checkBrand()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/asus/reader/ProgressActivity;->finish()V

    .line 42
    :cond_0
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 43
    .local v6, dialog:Landroid/app/ProgressDialog;
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/asus/reader/ProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0700e5

    invoke-virtual {p0, v0}, Lcom/asus/reader/ProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    .line 47
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/asus/reader/ProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 48
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/ProgressActivity$1;

    invoke-direct {v1, p0, v7}, Lcom/asus/reader/ProgressActivity$1;-><init>(Lcom/asus/reader/ProgressActivity;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/asus/reader/ProgressActivity;->finish()V

    goto :goto_0
.end method
