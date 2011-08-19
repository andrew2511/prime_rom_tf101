.class final Lcom/zinio/mobile/android/view/dialogs/x;
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
    .line 130
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/x;->a:Lcom/zinio/mobile/android/view/dialogs/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zinio/mobile/android/view/dialogs/x;->a:Lcom/zinio/mobile/android/view/dialogs/m;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/dialogs/m;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/x;->a:Lcom/zinio/mobile/android/view/dialogs/m;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 136
    return-void
.end method
