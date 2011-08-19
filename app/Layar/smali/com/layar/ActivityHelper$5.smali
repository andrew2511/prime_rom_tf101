.class Lcom/layar/ActivityHelper$5;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ActivityHelper;->showLoginPromtDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ActivityHelper;

.field private final synthetic val$finishOnCancel:Z


# direct methods
.method constructor <init>(Lcom/layar/ActivityHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ActivityHelper$5;->this$0:Lcom/layar/ActivityHelper;

    iput-boolean p2, p0, Lcom/layar/ActivityHelper$5;->val$finishOnCancel:Z

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/layar/ActivityHelper$5;->val$finishOnCancel:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/layar/ActivityHelper$5;->this$0:Lcom/layar/ActivityHelper;

    invoke-static {v0}, Lcom/layar/ActivityHelper;->access$0(Lcom/layar/ActivityHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 134
    :cond_0
    return-void
.end method
