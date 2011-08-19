.class final Lcom/zinio/mobile/android/view/dialogs/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/CheckBox;

.field private synthetic b:Lcom/zinio/mobile/android/view/dialogs/i;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/dialogs/i;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/q;->b:Lcom/zinio/mobile/android/view/dialogs/i;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/dialogs/q;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 763
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/q;->b:Lcom/zinio/mobile/android/view/dialogs/i;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/dialogs/i;->a:Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/q;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Lcom/zinio/mobile/android/view/dialogs/e;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 764
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/q;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/q;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 765
    return-void

    :cond_0
    move v1, v2

    .line 763
    goto :goto_0

    :cond_1
    move v1, v2

    .line 764
    goto :goto_1
.end method
