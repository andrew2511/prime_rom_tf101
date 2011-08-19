.class public Lcom/google/android/maps/driveabout/app/bo;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/app/ProgressDialog;

.field private c:Landroid/content/DialogInterface$OnCancelListener;

.field private d:Landroid/content/DialogInterface$OnKeyListener;

.field private e:Landroid/app/Dialog;

.field private f:Lcom/google/android/maps/driveabout/app/cb;

.field private g:Landroid/app/Dialog;

.field private h:Landroid/app/Dialog;

.field private i:Landroid/app/Dialog;

.field private j:Landroid/app/Dialog;

.field private k:Landroid/app/Dialog;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/app/AlertDialog;

.field private n:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

.field private o:Landroid/widget/CheckBox;

.field private p:Landroid/app/Dialog;

.field private q:Landroid/app/Dialog;

.field private r:Lcom/google/android/maps/driveabout/app/cz;

.field private s:Landroid/app/Dialog;

.field private t:Landroid/app/Dialog;

.field private u:Landroid/app/Dialog;

.field private v:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bo;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bo;->m:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bo;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bo;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->o:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/RecordingLevelsView;)Lcom/google/android/maps/driveabout/app/RecordingLevelsView;
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bo;->n:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/bo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    return-object v0
.end method

.method private r()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->i:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()Landroid/app/AlertDialog$Builder;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/df;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/app/df;-><init>(Lcom/google/android/maps/driveabout/app/de;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->u:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->u:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->u:Landroid/app/Dialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "loading"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "destinations"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->e:Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    const-string v0, "layers"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->f:Lcom/google/android/maps/driveabout/app/cb;

    goto :goto_0

    :cond_2
    const-string v0, "fatal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->i:Landroid/app/Dialog;

    goto :goto_0

    :cond_3
    const-string v0, "exitconfirmation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->v:Landroid/app/Dialog;

    goto :goto_0

    :cond_4
    const-string v0, "routeoptions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->t:Landroid/app/Dialog;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->b()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->d()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->g()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->i()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->k()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->j()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bo;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->m()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->c()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->e()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->f()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->o()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->t()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->q()V

    return-void
.end method

.method public a(I)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;I)Landroid/text/Spannable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->c:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->d:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->d:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/google/android/maps/driveabout/app/de;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/de;-><init>(Lcom/google/android/maps/driveabout/app/bo;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/google/android/maps/driveabout/app/df;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/app/df;-><init>(Lcom/google/android/maps/driveabout/app/de;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_1
.end method

.method public a(IF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->n:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->n:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a(IF)V

    :cond_0
    return-void
.end method

.method public a(IIIZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->i:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->s()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p4, :cond_1

    if-eqz p6, :cond_1

    const v1, 0x7f0b0064

    new-instance v2, Lcom/google/android/maps/driveabout/app/dj;

    invoke-direct {v2, p0, p6}, Lcom/google/android/maps/driveabout/app/dj;-><init>(Lcom/google/android/maps/driveabout/app/bo;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {v0, p6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->i:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->i:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public a(IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->e()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->s()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->j:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/bo;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f00db

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->n:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->n:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/RecordingLevelsView;->a(I)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0f00dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->o:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->o:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    const-string v3, "RmiMail"

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bo;->o:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lad/a;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->o:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->s()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b007a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0064

    new-instance v2, Lcom/google/android/maps/driveabout/app/dm;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/dm;-><init>(Lcom/google/android/maps/driveabout/app/bo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->m:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->m:Landroid/app/AlertDialog;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aS;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/aS;-><init>(Lcom/google/android/maps/driveabout/app/bo;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method a(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bo;->c:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bo;->d:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->f()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->s()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0061

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0067

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0063

    new-instance v2, Lcom/google/android/maps/driveabout/app/dl;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/dl;-><init>(Lcom/google/android/maps/driveabout/app/bo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/di;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/di;-><init>(Lcom/google/android/maps/driveabout/app/bo;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->s:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->k()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f00aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0031

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0f00ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->l:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->s()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0068

    new-instance v2, Lcom/google/android/maps/driveabout/app/dk;

    invoke-direct {v2, p0, p2}, Lcom/google/android/maps/driveabout/app/dk;-><init>(Lcom/google/android/maps/driveabout/app/bo;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->k:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->j()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->s()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b005f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b005e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p3, :cond_1

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;IZZLcom/google/android/maps/driveabout/app/aR;)V
    .locals 8

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->g()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/cb;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/cb;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;IZZLcom/google/android/maps/driveabout/app/aR;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->f:Lcom/google/android/maps/driveabout/app/cb;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->f:Lcom/google/android/maps/driveabout/app/cb;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cb;->show()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/app/dc;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->c()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/cz;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/app/cz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->r:Lcom/google/android/maps/driveabout/app/cz;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->r:Lcom/google/android/maps/driveabout/app/cz;

    new-instance v1, Lcom/google/android/maps/driveabout/app/df;

    invoke-direct {v1, v3}, Lcom/google/android/maps/driveabout/app/df;-><init>(Lcom/google/android/maps/driveabout/app/de;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cz;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->r:Lcom/google/android/maps/driveabout/app/cz;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    const v2, 0x7f0b00b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0203d5

    const v5, 0x7f0b0069

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/cz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->r:Lcom/google/android/maps/driveabout/app/cz;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cz;->show()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->r:Lcom/google/android/maps/driveabout/app/cz;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1, p2}, Lcom/google/android/maps/driveabout/app/cz;->a(ILcom/google/android/maps/driveabout/app/dc;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->m:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :goto_0
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->m:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->n:Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->o:Landroid/widget/CheckBox;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public a([LF/K;Lcom/google/android/maps/driveabout/app/dw;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->o()V

    invoke-static {}, LF/c;->a()LF/c;

    move-result-object v1

    array-length v0, p1

    new-array v2, v0, [LF/K;

    array-length v0, p1

    invoke-static {p1, v8, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v8

    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_2

    aget-object v4, p1, v0

    invoke-virtual {v4}, LF/K;->b()I

    move-result v4

    invoke-virtual {v1, v4}, LF/c;->a(I)LF/b;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, LF/b;->b()I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    move v6, v8

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, p1, v0

    invoke-virtual {v0}, LF/K;->c()I

    move-result v7

    if-ne v7, v9, :cond_3

    move v7, v9

    :goto_3
    aput-boolean v7, v4, v6

    invoke-virtual {v0}, LF/K;->b()I

    move-result v0

    invoke-virtual {v1, v0}, LF/c;->a(I)LF/b;

    move-result-object v0

    invoke-virtual {v0}, LF/b;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    :cond_3
    move v7, v8

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/google/android/maps/driveabout/app/aT;

    invoke-direct {v0, p0, v3, v2}, Lcom/google/android/maps/driveabout/app/aT;-><init>(Lcom/google/android/maps/driveabout/app/bo;Ljava/util/ArrayList;[LF/K;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/aU;

    invoke-direct {v1, p0, p2, v2}, Lcom/google/android/maps/driveabout/app/aU;-><init>(Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/dw;[LF/K;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->s()Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00b7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v4, v0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0062

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->t:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method public a([LF/u;ILcom/google/android/maps/driveabout/app/bf;)V
    .locals 8

    const/16 v7, 0x21

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->d()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->s()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    const v3, 0x7f0b0084

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    const v5, 0x1030042

    invoke-direct {v3, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const v4, 0x7f0b0086

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    const v5, 0x7f0d0003

    invoke-direct {v1, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    new-instance v1, Lcom/google/android/maps/driveabout/app/bh;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Landroid/content/Context;

    array-length v3, p1

    invoke-direct {v1, v2, p1, v3, v6}, Lcom/google/android/maps/driveabout/app/bh;-><init>(Landroid/content/Context;[LF/u;IZ)V

    const v2, 0x7f020123

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/google/android/maps/driveabout/app/dd;

    invoke-direct {v2, p0, p3}, Lcom/google/android/maps/driveabout/app/dd;-><init>(Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/bf;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/google/android/maps/driveabout/app/dh;

    invoke-direct {v2, p0, p3, p1}, Lcom/google/android/maps/driveabout/app/dh;-><init>(Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/bf;[LF/u;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    const v1, 0x7f0b0064

    new-instance v2, Lcom/google/android/maps/driveabout/app/dg;

    invoke-direct {v2, p0, p3}, Lcom/google/android/maps/driveabout/app/dg;-><init>(Lcom/google/android/maps/driveabout/app/bo;Lcom/google/android/maps/driveabout/app/bf;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->e:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_2
    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->b:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public b(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->m()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->s()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0049

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->p:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->r:Lcom/google/android/maps/driveabout/app/cz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->r:Lcom/google/android/maps/driveabout/app/cz;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cz;->cancel()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->r:Lcom/google/android/maps/driveabout/app/cz;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cz;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->r:Lcom/google/android/maps/driveabout/app/cz;

    :cond_0
    return-void
.end method

.method public c(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->n()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->s()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0064

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->q:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->e:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public d(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bo;->q()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->s()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0064

    new-instance v2, Lcom/google/android/maps/driveabout/app/aV;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/aV;-><init>(Lcom/google/android/maps/driveabout/app/bo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->v:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->j:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->s:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->s:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->s:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->f:Lcom/google/android/maps/driveabout/app/cb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->f:Lcom/google/android/maps/driveabout/app/cb;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cb;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->f:Lcom/google/android/maps/driveabout/app/cb;

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->g:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->g:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->h:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->k:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/bo;->l:Landroid/widget/CheckBox;

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->l:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->p:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->p:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->q:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->q:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->q:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->t:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->t:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bo;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->v:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->v:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->v:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
