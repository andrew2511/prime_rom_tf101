.class final Lcom/zinio/mobile/android/view/dialogs/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/CheckBox;

.field private synthetic b:Lcom/zinio/mobile/android/view/dialogs/j;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/dialogs/j;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/t;->b:Lcom/zinio/mobile/android/view/dialogs/j;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/dialogs/t;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 438
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/t;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/t;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 439
    return-void

    .line 438
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
