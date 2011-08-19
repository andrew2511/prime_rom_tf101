.class Lcom/layar/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/CameraActivity;->onPreviewFall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/CameraActivity;


# direct methods
.method constructor <init>(Lcom/layar/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/CameraActivity$1;->this$0:Lcom/layar/CameraActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/layar/CameraActivity$1;->this$0:Lcom/layar/CameraActivity;

    invoke-virtual {v0}, Lcom/layar/CameraActivity;->finish()V

    .line 128
    return-void
.end method
