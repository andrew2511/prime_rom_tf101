.class final Lcom/zinio/mobile/android/view/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/ac;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/zinio/mobile/android/view/cg;->a:Lcom/zinio/mobile/android/view/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 109
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cg;->a:Lcom/zinio/mobile/android/view/ac;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/ac;->a:Lcom/zinio/mobile/android/view/FAQActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/FAQActivity;->finish()V

    .line 110
    return-void
.end method
