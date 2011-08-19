.class public final Lcom/zinio/mobile/android/view/dialogs/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private g:Lcom/zinio/mobile/android/view/cr;

.field private h:Landroid/content/DialogInterface$OnClickListener;

.field private i:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/c;->a:Landroid/content/Context;

    .line 231
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/zinio/mobile/android/view/dialogs/c;
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/c;->c:Ljava/lang/String;

    .line 254
    return-object p0
.end method

.method public final a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/c;->d:Ljava/lang/Integer;

    .line 309
    iput-object p2, p0, Lcom/zinio/mobile/android/view/dialogs/c;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 310
    return-object p0
.end method

.method public final a(Landroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;
    .locals 1
    .parameter

    .prologue
    .line 357
    const v0, 0x7f080022

    invoke-virtual {p0, v0, p1}, Lcom/zinio/mobile/android/view/dialogs/c;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/zinio/mobile/android/view/cr;)Lcom/zinio/mobile/android/view/dialogs/c;
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/c;->g:Lcom/zinio/mobile/android/view/cr;

    .line 372
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/zinio/mobile/android/view/dialogs/c;
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/c;->c:Ljava/lang/String;

    .line 242
    return-object p0
.end method

.method public final a()Lcom/zinio/mobile/android/view/dialogs/m;
    .locals 10

    .prologue
    .line 383
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/m;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/dialogs/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/dialogs/c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/zinio/mobile/android/view/dialogs/c;->d:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/zinio/mobile/android/view/dialogs/c;->e:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/zinio/mobile/android/view/dialogs/c;->f:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/zinio/mobile/android/view/dialogs/c;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object v8, p0, Lcom/zinio/mobile/android/view/dialogs/c;->i:Landroid/content/DialogInterface$OnClickListener;

    iget-object v9, p0, Lcom/zinio/mobile/android/view/dialogs/c;->g:Lcom/zinio/mobile/android/view/cr;

    invoke-direct/range {v0 .. v9}, Lcom/zinio/mobile/android/view/dialogs/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Lcom/zinio/mobile/android/view/cr;)V

    .line 388
    invoke-static {v0}, Lcom/zinio/mobile/android/view/dialogs/m;->c(Lcom/zinio/mobile/android/view/dialogs/m;)V

    .line 390
    return-object v0
.end method

.method public final b(I)Lcom/zinio/mobile/android/view/dialogs/c;
    .locals 1
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/c;->b:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public final b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/c;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 326
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/c;->e:Ljava/lang/Integer;

    .line 327
    iput-object p2, p0, Lcom/zinio/mobile/android/view/dialogs/c;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 328
    return-object p0
.end method

.method public final c(I)Lcom/zinio/mobile/android/view/dialogs/c;
    .locals 1
    .parameter

    .prologue
    .line 291
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/c;->f:Ljava/lang/Integer;

    .line 292
    return-object p0
.end method
