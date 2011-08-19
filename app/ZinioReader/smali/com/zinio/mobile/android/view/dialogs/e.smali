.class public final Lcom/zinio/mobile/android/view/dialogs/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/zinio/mobile/android/view/dialogs/c;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->c:Ljava/lang/Boolean;

    .line 53
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/e;->b:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-direct {v0, p1}, Lcom/zinio/mobile/android/view/dialogs/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/dialogs/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0x7f080070

    const v2, 0x7f08000b

    .line 398
    if-eqz p3, :cond_1

    .line 399
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    invoke-virtual {v0, v2, p3}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 406
    :goto_0
    if-eqz p5, :cond_0

    .line 407
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0, p4, p5}, Lcom/zinio/mobile/android/view/dialogs/c;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v1, 0x7f03002a

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->c(I)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 412
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/zinio/mobile/android/view/dialogs/j;-><init>(Lcom/zinio/mobile/android/view/dialogs/e;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(Lcom/zinio/mobile/android/view/cr;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 454
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 455
    return-object v0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/a;

    invoke-direct {v1}, Lcom/zinio/mobile/android/view/dialogs/a;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    goto :goto_0
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/dialogs/e;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/e;->c:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static b(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 631
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 632
    const v1, 0x7f08004a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 633
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 634
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 635
    return-object v0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/dialogs/e;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->c:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->b:Landroid/content/Context;

    const v1, 0x7f08006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v2, 0x7f080069

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a(Ljava/lang/String;)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/a;

    invoke-direct {v1}, Lcom/zinio/mobile/android/view/dialogs/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 167
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 2
    .parameter

    .prologue
    .line 337
    const v0, 0x7f08004b

    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/l;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/dialogs/l;-><init>(Lcom/zinio/mobile/android/view/dialogs/e;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 294
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/a;

    invoke-direct {v0}, Lcom/zinio/mobile/android/view/dialogs/a;-><init>()V

    invoke-virtual {p0, p2, p1, v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zinio/mobile/android/view/dialogs/c;->a(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1, p3}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 390
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 477
    const v4, 0x7f08001a

    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/zinio/mobile/android/view/dialogs/e;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 5
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->b:Landroid/content/Context;

    const v1, 0x7f080066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/32 v3, 0x100000

    div-long v3, p1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v2, 0x7f080065

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a(Ljava/lang/String;)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/a;

    invoke-direct {v1}, Lcom/zinio/mobile/android/view/dialogs/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 150
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 3
    .parameter

    .prologue
    .line 579
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v1, 0x7f08004b

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080006

    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/y;

    invoke-direct {v2, p0, p1}, Lcom/zinio/mobile/android/view/dialogs/y;-><init>(Lcom/zinio/mobile/android/view/dialogs/e;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080007

    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/h;

    invoke-direct {v2, p0, p1}, Lcom/zinio/mobile/android/view/dialogs/h;-><init>(Lcom/zinio/mobile/android/view/dialogs/e;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/dialogs/c;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 583
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 3
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080010

    invoke-virtual {v0, v1, p1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080009

    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/a;

    invoke-direct {v2}, Lcom/zinio/mobile/android/view/dialogs/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/dialogs/c;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 74
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v1, 0x7f08009f

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1, p1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1, p2}, Lcom/zinio/mobile/android/view/dialogs/c;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 121
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/util/Date;)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    const-string v0, "MMM yyyy"

    .line 97
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->b:Landroid/content/Context;

    const v2, 0x7f080084

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v2, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v3, 0x7f08007e

    invoke-virtual {v2, v3}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a(Ljava/lang/String;)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080010

    invoke-virtual {v0, v1, p1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1, p2}, Lcom/zinio/mobile/android/view/dialogs/c;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 103
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/zinio/mobile/android/b/c;)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 4
    .parameter

    .prologue
    .line 249
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/a;

    invoke-direct {v0}, Lcom/zinio/mobile/android/view/dialogs/a;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service reponse returned the following error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/zinio/mobile/android/b/c;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/zinio/mobile/android/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/zinio/mobile/android/b/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v3, 0x7f08004b

    invoke-virtual {v2, v3}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(Ljava/lang/String;)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v1

    const v2, 0x7f080009

    invoke-virtual {v1, v2, v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 505
    const v1, 0x7f03001e

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/zinio/mobile/android/view/dialogs/e;->a(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/d;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/d;-><init>(Lcom/zinio/mobile/android/view/dialogs/e;)V

    .line 182
    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v2, 0x7f08006d

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v1

    const v2, 0x7f08006e

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/dialogs/c;->a(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v1

    const v2, 0x7f08002c

    invoke-virtual {v1, v2, v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v1

    const v2, 0x7f080009

    invoke-virtual {v1, v2, v0}, Lcom/zinio/mobile/android/view/dialogs/c;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 187
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 2
    .parameter

    .prologue
    .line 360
    const v0, 0x7f08004b

    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/k;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/dialogs/k;-><init>(Lcom/zinio/mobile/android/view/dialogs/e;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 2
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1, p1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 131
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f08000b

    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/a;

    invoke-direct {v2}, Lcom/zinio/mobile/android/view/dialogs/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f08001a

    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/b;

    invoke-direct {v2, p0}, Lcom/zinio/mobile/android/view/dialogs/b;-><init>(Lcom/zinio/mobile/android/view/dialogs/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/dialogs/c;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 202
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/app/Activity;)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 3
    .parameter

    .prologue
    .line 662
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v1, 0x7f08004b

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f0800a5

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080022

    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/g;

    invoke-direct {v2, p0, p1}, Lcom/zinio/mobile/android/view/dialogs/g;-><init>(Lcom/zinio/mobile/android/view/dialogs/e;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 666
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 2
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v1, 0x7f08004b

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080009

    invoke-virtual {v0, v1, p1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 233
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/a;

    invoke-direct {v0}, Lcom/zinio/mobile/android/view/dialogs/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/dialogs/e;->c(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 2

    .prologue
    .line 305
    const v0, 0x7f080062

    const v1, 0x7f080061

    invoke-virtual {p0, v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(II)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 3

    .prologue
    .line 646
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v1, 0x7f08004b

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const-string v1, "Internet connection is required to download publications. Please turn on Internet connection and try again."

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(Ljava/lang/String;)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080009

    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/a;

    invoke-direct {v2}, Lcom/zinio/mobile/android/view/dialogs/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 651
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->b:Landroid/content/Context;

    sget-object v1, Lcom/zinio/mobile/android/a;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 729
    return-void
.end method

.method public final h()Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 3

    .prologue
    .line 742
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    const v1, 0x7f030014

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->c(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->b(I)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080009

    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/a;

    invoke-direct {v2}, Lcom/zinio/mobile/android/view/dialogs/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/dialogs/c;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    const v1, 0x7f080022

    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/f;

    invoke-direct {v2}, Lcom/zinio/mobile/android/view/dialogs/f;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/dialogs/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/i;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/dialogs/i;-><init>(Lcom/zinio/mobile/android/view/dialogs/e;)V

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/c;->a(Lcom/zinio/mobile/android/view/cr;)Lcom/zinio/mobile/android/view/dialogs/c;

    .line 785
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/e;->a:Lcom/zinio/mobile/android/view/dialogs/c;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/c;->a()Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    .line 787
    return-object v0
.end method
