.class final Lcom/zinio/mobile/android/view/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LoginActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/zinio/mobile/android/view/m;->a:Lcom/zinio/mobile/android/view/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/zinio/mobile/android/view/m;->a:Lcom/zinio/mobile/android/view/LoginActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zinio/mobile/android/view/LoginActivity;->a:Z

    .line 191
    return-void
.end method
