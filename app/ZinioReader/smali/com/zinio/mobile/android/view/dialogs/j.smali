.class final Lcom/zinio/mobile/android/view/dialogs/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/view/cr;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/zinio/mobile/android/view/dialogs/e;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/dialogs/e;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/j;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    iput p2, p0, Lcom/zinio/mobile/android/view/dialogs/j;->a:I

    iput-object p3, p0, Lcom/zinio/mobile/android/view/dialogs/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/view/dialogs/m;)V
    .locals 3
    .parameter

    .prologue
    .line 415
    const v0, 0x7f0c008f

    invoke-virtual {p1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 417
    iget v1, p0, Lcom/zinio/mobile/android/view/dialogs/j;->a:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 418
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 419
    iget v0, p0, Lcom/zinio/mobile/android/view/dialogs/j;->a:I

    const v1, 0x7f03001e

    if-ne v0, v1, :cond_0

    .line 420
    const v0, 0x7f0c006b

    invoke-virtual {p1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 422
    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    :cond_0
    const v0, 0x7f0c0092

    invoke-virtual {p1, v0}, Lcom/zinio/mobile/android/view/dialogs/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 427
    invoke-static {}, Lcom/zinio/mobile/android/view/dialogs/o;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 428
    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/v;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/dialogs/v;-><init>(Lcom/zinio/mobile/android/view/dialogs/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    const v1, 0x7f0c0091

    invoke-virtual {p1, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 436
    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/t;

    invoke-direct {v2, p0, v0}, Lcom/zinio/mobile/android/view/dialogs/t;-><init>(Lcom/zinio/mobile/android/view/dialogs/j;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/u;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/dialogs/u;-><init>(Lcom/zinio/mobile/android/view/dialogs/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 451
    return-void

    .line 427
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
