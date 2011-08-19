.class final Lcom/zinio/mobile/android/view/dialogs/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/dialogs/m;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/dialogs/m;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/w;->a:Lcom/zinio/mobile/android/view/dialogs/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/w;->a:Lcom/zinio/mobile/android/view/dialogs/m;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/dialogs/m;->b(Lcom/zinio/mobile/android/view/dialogs/m;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/w;->a:Lcom/zinio/mobile/android/view/dialogs/m;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 160
    return-void
.end method
