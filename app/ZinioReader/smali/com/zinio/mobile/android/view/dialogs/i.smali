.class final Lcom/zinio/mobile/android/view/dialogs/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/view/cr;


# instance fields
.field final synthetic a:Lcom/zinio/mobile/android/view/dialogs/e;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/dialogs/e;)V
    .locals 0
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/i;->a:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/view/dialogs/m;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0c005a

    .line 750
    invoke-virtual {p1, v3}, Lcom/zinio/mobile/android/view/dialogs/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 752
    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/i;->a:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/dialogs/e;->b(Lcom/zinio/mobile/android/view/dialogs/e;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 753
    invoke-static {}, Lcom/zinio/mobile/android/view/dialogs/o;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 759
    :goto_0
    const v1, 0x7f0c0059

    invoke-virtual {p1, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 761
    new-instance v2, Lcom/zinio/mobile/android/view/dialogs/q;

    invoke-direct {v2, p0, v0}, Lcom/zinio/mobile/android/view/dialogs/q;-><init>(Lcom/zinio/mobile/android/view/dialogs/i;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/p;

    invoke-direct {v1, p0, v0}, Lcom/zinio/mobile/android/view/dialogs/p;-><init>(Lcom/zinio/mobile/android/view/dialogs/i;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 776
    invoke-virtual {p1, v3}, Lcom/zinio/mobile/android/view/dialogs/m;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 777
    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/r;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/dialogs/r;-><init>(Lcom/zinio/mobile/android/view/dialogs/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    return-void

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/i;->a:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/dialogs/e;->b(Lcom/zinio/mobile/android/view/dialogs/e;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
