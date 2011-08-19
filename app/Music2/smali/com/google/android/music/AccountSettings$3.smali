.class Lcom/google/android/music/AccountSettings$3;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AccountSettings;->authenticationFailed(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AccountSettings;

.field final synthetic val$message:I

.field final synthetic val$title:I


# direct methods
.method constructor <init>(Lcom/google/android/music/AccountSettings;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/music/AccountSettings$3;->this$0:Lcom/google/android/music/AccountSettings;

    iput p2, p0, Lcom/google/android/music/AccountSettings$3;->val$title:I

    iput p3, p0, Lcom/google/android/music/AccountSettings$3;->val$message:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 179
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/music/AccountSettings$3;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/google/android/music/AccountSettings$3;->val$title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/AccountSettings$3;->val$message:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 184
    .local v0, dialog:Landroid/app/AlertDialog;
    return-void
.end method
