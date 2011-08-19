.class final Lcom/zinio/mobile/android/view/dialogs/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 795
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 798
    instance-of v1, p1, Landroid/app/Dialog;

    if-nez v1, :cond_0

    .line 799
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 809
    :goto_0
    return-void

    .line 802
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    move-object v1, v0

    .line 803
    const v2, 0x7f0c005a

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 805
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 807
    invoke-static {v1}, Lcom/zinio/mobile/android/view/dialogs/o;->a(Z)V

    .line 808
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
