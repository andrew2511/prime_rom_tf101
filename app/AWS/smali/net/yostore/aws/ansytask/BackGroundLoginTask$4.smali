.class Lnet/yostore/aws/ansytask/BackGroundLoginTask$4;
.super Ljava/lang/Object;
.source "BackGroundLoginTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/ansytask/BackGroundLoginTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/ansytask/BackGroundLoginTask;


# direct methods
.method constructor <init>(Lnet/yostore/aws/ansytask/BackGroundLoginTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/ansytask/BackGroundLoginTask$4;->this$0:Lnet/yostore/aws/ansytask/BackGroundLoginTask;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 152
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BackGroundLoginTask$4;->this$0:Lnet/yostore/aws/ansytask/BackGroundLoginTask;

    iget-object v0, v0, Lnet/yostore/aws/ansytask/BackGroundLoginTask;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goHome(Landroid/content/Context;)V

    .line 153
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BackGroundLoginTask$4;->this$0:Lnet/yostore/aws/ansytask/BackGroundLoginTask;

    iget-object p0, v0, Lnet/yostore/aws/ansytask/BackGroundLoginTask;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 154
    return-void
.end method
