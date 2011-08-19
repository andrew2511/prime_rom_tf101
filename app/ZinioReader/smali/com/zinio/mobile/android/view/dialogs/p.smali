.class final Lcom/zinio/mobile/android/view/dialogs/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Landroid/widget/CheckBox;

.field private synthetic b:Lcom/zinio/mobile/android/view/dialogs/i;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/dialogs/i;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 768
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/p;->b:Lcom/zinio/mobile/android/view/dialogs/i;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/dialogs/p;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 771
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/p;->b:Lcom/zinio/mobile/android/view/dialogs/i;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/dialogs/i;->a:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Lcom/zinio/mobile/android/view/dialogs/e;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 772
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/p;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 773
    return-void
.end method
