.class public final Lcom/zinio/mobile/android/view/dialogs/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private synthetic b:Lcom/zinio/mobile/android/view/dialogs/e;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/dialogs/e;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/zinio/mobile/android/view/dialogs/y;->b:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-object p2, p0, Lcom/zinio/mobile/android/view/dialogs/y;->a:Landroid/app/Activity;

    .line 615
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 617
    new-instance v0, Lcom/zinio/mobile/android/util/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/dialogs/y;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/util/e;-><init>(Landroid/app/Activity;)V

    .line 618
    invoke-virtual {v0}, Lcom/zinio/mobile/android/util/e;->b()V

    .line 619
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 620
    return-void
.end method
