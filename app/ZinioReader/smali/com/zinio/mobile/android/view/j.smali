.class final Lcom/zinio/mobile/android/view/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/ChangePasswordActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/zinio/mobile/android/view/j;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zinio/mobile/android/view/j;->a:Lcom/zinio/mobile/android/view/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->finish()V

    .line 143
    return-void
.end method
