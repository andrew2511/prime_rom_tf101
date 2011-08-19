.class final Lcom/zinio/mobile/android/view/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/bc;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/bc;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bz;->a:Lcom/zinio/mobile/android/view/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 227
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bz;->a:Lcom/zinio/mobile/android/view/bc;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/bc;->a:Lcom/zinio/mobile/android/view/ShopActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ShopActivity;->finish()V

    .line 228
    return-void
.end method
