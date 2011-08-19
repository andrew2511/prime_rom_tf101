.class final Lcom/zinio/mobile/android/view/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/ba;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bx;->a:Lcom/zinio/mobile/android/view/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 465
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 466
    return-void
.end method
